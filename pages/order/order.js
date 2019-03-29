//获取应用实例
const app = getApp()
const util = require('../../utils/util.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    orderlist:[]
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
    this.getOrder();
  }, 
  /**
   * 获取所有订单
   */
  getOrder: function () {//获取收货人信息
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getOrder',
      method: 'POST',
      data: {},
      success: function (res) {
        if (res.data.status == 200 && res.data.message == "success") {
          that.setData({
            orderlist: res.data.data
          });
          wx.hideLoading()
        }
        else if (res.data.code == 500) {
          that.setData({
            orderlist: []
          });
        }
        else {
          //出错
        }
      }
    })
  },
  orderdateil:function(){
    wx.navigateTo({
      url: '../order/orderDateil'
    })
  }
})