Page({
  data: {
    carts: [],               // 购物车列表
    hasList: false,          // 列表是否有数据
    totalPrice: 0,           // 总价，初始为0
    goodsCount: 0,           // 数量
    selectAllStatus: true    // 全选状态，默认全选
  },
  onShow() {
    // 获取产品展示页保存的缓存数据（购物车的缓存数组，没有数据，则赋予一个空数组）  
    var arr = wx.getStorageSync('cart') || [];  
    // 有数据的话，就遍历数据，计算总金额 和 总数量  
    if (arr.length > 0) {
      for (var i in arr) {
        this.data.totalPrice += Number(arr[i].price);
        this.data.goodsCount += Number(arr[i].count);
      }
      // 更新数据  
      this.setData({
        hasList: true,
        carts: arr,
        totalPrice: this.data.totalPrice,
        goodsCount: this.data.goodsCount
      });
    }  
  },
})