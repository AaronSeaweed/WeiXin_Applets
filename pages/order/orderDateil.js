//获取应用实例
const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    orderid:"",
    orderdateil:[],
    goodsimg:[],
    goodcount:0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.showLoading({
      title: '加载中',
    })
    this.setData({
      orderid: options.orderid
    })
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getOrderDateil',
      method: 'POST',
      data: { orderid: that.data.orderid },
      success: function (res) {
        if (res.data.status == 200 && res.data.message == "success") {
          for (var item of res.data.data[that.data.orderid].food){
            that.data.goodcount += item.count,
              that.data.goodsimg.push(item.img)
          }
          wx.setStorageSync('orderinfo', res.data.data[that.data.orderid].food);
          that.setData({
            orderdateil: res.data.data[that.data.orderid],
            goodcount: that.data.goodcount,
            goodsimg: that.data.goodsimg
          });
          wx.hideLoading()
        }
        else if (res.data.code == 500) {
          that.setData({
            orderdateil: []
          });
        }
        else {
          //出错
        }
      }
    })
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    this.setData({
      goodcount: 0
    });
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
    
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  },

  /**
   * 取消订单
   */
  cancelorder:function(){
    var that = this;
    wx.showActionSheet({
      itemList: ['不想要了', '购买重复', '无法签收','其他'],
      success() {
        wx.request({
          url: app.globalData.httpHost + '/weixin/cancelorder',
          method: 'POST',
          data: { orderid: that.data.orderid },
          success: function (res) {
            if (res.data.status == 200 && res.data.message == "success") {
              wx.showToast({
                title: '操作成功',
                icon: 'none',
                duration: 2000,
                success:function(){
                  setTimeout(()=>{wx.navigateBack({delta: 1})},2000)
                }
              })
            }
            else if (res.data.code == 500) {
              wx.showToast({
                title: '操作失败,请稍后重试',
                icon: 'none',
                duration: 2000
              })
            }
            else {
              //出错
            }
          }
        })
      },
      fail(res) {
        console.log(res.errMsg)
      }
    })
  }
})