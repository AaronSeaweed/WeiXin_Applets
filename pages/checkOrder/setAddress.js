//获取应用实例
const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    addressinfo:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
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
    this.getUserInfo();
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    
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
  getUserInfo: function () {//获取收货人信息
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getuserinfo',
      method: 'POST',
      data: {'type':'all'},
      success: function (res) {
        if (res.data.status == 200 && res.data.message == "success") {
          that.setData({
            addressinfo: res.data.data
          });
        }
        else if (res.data.code == 500) {
          that.setData({
            addressinfo: []
          });
        }
        else {
          //出错
        }
      }
    })
  }, 
  /**
   * 选择地址
   */
  seladdress:function(e){
    let that = this;
    wx.navigateBack({
      delta:1,
      success:function(){
        e.currentTarget.dataset.info.usestatus=1
        that.setUserInfo(e.currentTarget.dataset.info);
        wx.showLoading({
          title: '加载中',
        })
      }
    })
  },
  setUserInfo: function (obj) {//修改收货人信息
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/setuserinfo',
      method: 'POST',
      data: obj,
      success: function (res) {
        if (res.data.status == 200 && res.data.message == "success") {
          that.getUserInfo();
          that.setData({
            //addressinfo: res.data.data
          });
        }
        else if (res.data.code == 500) {
          that.setData({
           // addressinfo: []
          });
        }
        else {
          //出错
        }
      }
    })
  }, 
})