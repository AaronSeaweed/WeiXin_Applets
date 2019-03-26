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
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    this.getUserInfo();
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
    e.currentTarget.dataset.info.usestatus = 1
    wx.setStorageSync('userinfo', e.currentTarget.dataset.info)
    wx.navigateBack({
      delta:1,
      success:function(){
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
        }
        else if (res.data.code == 500) {
         
        }
        else {
          //出错
        }
      }
    })
  }, addNewAddress:function(){
    wx.navigateTo({
      url: '../setaddress/modifyaddress',
    })
  }, updateaddress:function(e){
    wx.navigateTo({
      url: '../setaddress/modifyaddress?op=update&addid=' + e.currentTarget.dataset.addid
    })
  }
})