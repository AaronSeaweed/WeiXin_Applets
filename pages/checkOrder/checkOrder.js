//获取应用实例
const app = getApp()
Page({
  data:{
    paygoods:[],
    totalPrice:0,
    goodsCount:0,
    goodsTypeCount:0,
    userinfo:[],
    hideadd:0,
    grossPrice:0
  },
  onLoad(){
    wx.showLoading({
      title: '加载中',
    })
  },
  onShow(){
    //读取缓存中的地址信息
    if (!wx.getStorageSync('userinfo')) {
      this.setData({
        hideadd: 1
      });
      //this.getUserInfo();
    } else {
      var ui = wx.getStorageSync('userinfo');
      this.setData({
        userinfo: ui,
        hideadd: 0
      });
    }
    setTimeout(() => {
      wx.hideLoading()
    }, 700)
    var arr = wx.getStorageSync('cart') || [];
    for (var i in arr) {
      if (arr[i].checked) {
        this.data.goodsTypeCount++;
        this.data.totalPrice += Number(arr[i].price.toFixed(2)) * arr[i].count;
        this.data.goodsCount += Number(arr[i].count);
        this.data.paygoods.push(arr[i])
      }
    }
    this.setData({
      paygoods: this.data.paygoods,
      totalPrice: this.data.totalPrice.toFixed(2),
      goodsCount: this.data.goodsCount,
      goodsTypeCount: this.data.goodsTypeCount,
      grossPrice: Number(this.data.totalPrice.toFixed(2))+5
    })
  }, 
  onHide: function () {
    setTimeout(() => { this.setData({ totalPrice: 0, goodsCount: 0, goodsTypeCount: 0, paygoods:[] }) }, 500)
  },
  showgoodslist: function () {
    wx.navigateTo({
      url: '../checkOrder/goodslist'
    })
  },
  getUserInfo: function () {//获取收货人信息
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getuserinfo',
      method: 'POST',
      data: {},
      success: function (res) {
        if (res.data.status == 200&&res.data.message=="success") {
          that.setData({
            userinfo: res.data.data[0]
          });
          wx.setStorageSync('userinfo', res.data.data[0])//将已选择的地址存入缓存中
          wx.hideLoading()
        }
        else if (res.data.code == 500) {
          that.setData({
            userinfo: []
          });
        }
        else {
          //出错
        }
      }
    })
  },
  setaddress:function(){
    wx.navigateTo({
      url: '../setaddress/setAddress'
    })
  }
});