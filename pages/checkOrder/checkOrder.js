Page({
  data:{
    paygoods:[],
    totalPrice:0,
    goodsCount:0,
    goodsTypeCount:0
  },
  onShow(){
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
      totalPrice: this.data.totalPrice,
      goodsCount: this.data.goodsCount,
      goodsTypeCount: this.data.goodsTypeCount
    })
  }
});