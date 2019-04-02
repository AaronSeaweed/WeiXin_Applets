Page({

  /**
   * 页面的初始数据
   */
  data: {
    goodslist:[]
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
    let arr;
    if(this.options.op=="orderinfo"){
      arr = wx.getStorageSync('orderinfo') || [];
    }else{
      arr = wx.getStorageSync('cart') || [];
      for (var i in arr) {
        if (arr[i].checked) {
          this.data.goodslist.push(arr[i])
        }
      }
      arr = this.data.goodslist
    }
    this.setData({
      goodslist: arr
    })
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
    
  }
})