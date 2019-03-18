Page({
  data: {
    carts: [],               // 购物车列表
    hasList: false,          // 列表是否有数据
    totalPrice: 0,           // 总价，初始为0
    goodsCount: 0,           // 数量
    selectAllStatus: true    // 全选状态，默认全选
    //firstenter: true
  },
  onShow() {
    // 获取产品展示页保存的缓存数据（购物车的缓存数组，没有数据，则赋予一个空数组）  
    var arr = wx.getStorageSync('cart') || [];  
    // 有数据的话并且非首次进来，就遍历数据，计算总金额 和 总数量  
    if (arr.length > 0) {
      for (var i in arr) {
        // if (this.data.firstenter){
        //   arr[i].checked = true;
        // }
        if (arr[i].checked){
          this.data.totalPrice += Number(arr[i].price.toFixed(2)) * arr[i].count;
          this.data.goodsCount += Number(arr[i].count);
        }
      }
      //this.data.firstenter = false;
      // 更新数据  
      this.setData({
        hasList: true,
        carts: arr,
        totalPrice: this.data.totalPrice.toFixed(2),
        goodsCount: this.data.goodsCount
      });
      wx.setStorageSync('cart', arr);//更新缓存数据
    }else{
      this.setData({
        hasList: false,
      });
    }  
  },
  onHide(){
    setTimeout(() => { this.setData({ totalPrice: 0, goodsCount:0})},200)
  },
  /*
  选择/取消购物车商品
  */
  checkboxChange:function(e){
    let checkcount = 0;
    this.data.carts[e.target.dataset.index].checked = !this.data.carts[e.target.dataset.index].checked;//改变当前选择chexk的状态
    //重新计算商品总价和总数
    this.recalculate(this.data.carts);
    //计算选中的商品个数
    for (var i in this.data.carts){
      if (this.data.carts[i].checked) checkcount++;
    }
    //设置全选按钮状态
    this.setData({
      selectAllStatus: checkcount == this.data.carts.length?true:false
    });
  },
  /*
  全选/反选
  */
  allcheckboxChange:function(e){
    for (let i = 0; i < this.data.carts.length; i++) {
      this.data.carts[i].checked = (!this.data.selectAllStatus)
    }
    //重新计算商品总价和总数
    this.recalculate(this.data.carts)
    this.setData({
      selectAllStatus: (!this.data.selectAllStatus)
    })
  } 
  /**
   * 删除购物车商品
   */
  ,delcarfood: function (e) {
    let that= this;
    wx.showModal({
      title: '提示',
      content: '您确定删除该商品吗？',
      success(res) {
        if (res.confirm) {
          var arr = wx.getStorageSync('cart');
          function delItem(arr, index) {
            for (var i = arr.length - 1; i >= 0; i--) {
              if (i == index) {
                arr.splice(i, 1);
                break;//删除所有的注释这句
              }
            }
          }
          delItem(arr, e.target.dataset.index)
          if (arr.length > 0) {
            that.recalculate(arr, 1)
          } else {
            that.setData({
              hasList: false,
              firstenter:true
            });
            wx.setStorageSync('cart', arr);
          }
        } else if (res.cancel) {
          
        }
      }
    })
  },
  recalculate: function (arr, del){
    let totprice = 0;
    let foodcount = 0;
    for (let i = 0; i < arr.length; i++) {//重新累计商品总价和数量
      if (arr[i].checked) {//选中的商品
        totprice += Number(arr[i].price.toFixed(2)) * arr[i].count;
        foodcount += Number(arr[i].count);
      }
    }
    this.setData({
      carts: arr,
      totalPrice: totprice.toFixed(2),
      goodsCount: foodcount,
    });
    if(del){
      this.setData({
        selectAllStatus: foodcount == this.data.carts.length ? true : false
      })
    }
    wx.setStorageSync('cart', arr);
  }
})