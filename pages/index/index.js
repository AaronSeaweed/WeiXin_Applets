//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    motto: '老徐你好',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    menuTapCurrent:1,//默认加载tab1
    menuList: [],
    foodList:[],
    scroll_height:0,
    carData:[],
    menuindex:1
  },
  onLoad: function () {
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else if (this.data.canIUse){
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
        }
      })
    }
    let windowHeight = wx.getSystemInfoSync().windowHeight // 屏幕的高度
    let windowWidth = wx.getSystemInfoSync().windowWidth // 屏幕的宽度
    this.setData({
      scroll_height: windowHeight * 750 / windowWidth - 228 - 30
    })
    wx.showLoading({
      title: '加载中',
    })
    
  },
  onShow: function () {
    this.getMenuList();
    this.getFoodList(this.data.menuindex);
    setTimeout(() => {
      wx.hideLoading()
    }, 500)
  },
  getUserInfo: function(e) {
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  },menuTap: function (e) {
    let current = e.currentTarget.dataset.current;//获取到绑定的数据
    //改变menuTapCurrent的值为当前选中的menu所绑定的数据
    this.setData({
      menuTapCurrent: current
    });
    //滚动菜单
    this.setData({
      toView: "sw" + Number(current-2)
    })
    this.getFoodList(current);
  },
  getMenuList: function () {//获取食物类型
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getfoodtype',
      method: 'POST',
      data: {},
      success: function (res) {
        if (res.data.status == 200&&res.data.message=="success") {
          that.setData({
            hasData: true,
            menuList: res.data.data
          });
        }
        else if (res.data.code == 500) {
          that.setData({
            hasData: false,
            menuList: []
          });
        }
        else {
          //出错
        }
      }
    })
  }, getFoodList: function (foodtypeid) {//获取食物列表
    let that = this;
    wx.request({
      url: app.globalData.httpHost + '/weixin/getfood',
      method: 'POST',
      data: {'foodtypeid':foodtypeid},
      success: function (res) {
        if (res.data.status == 200 && res.data.message == "success") {
          that.setData({
            hasData: true,
            foodList: res.data.data,
            menuindex: foodtypeid
          });
        }
        else if (res.data.code == 500) {
          that.setData({
            hasData: false,
            foodList: []
          });
        }
        else {
          //出错
        }
      }
    })
  },
  AddCar:function(e){
    let that = this;
    let foodindex = e.currentTarget.dataset.index
    that.setData({
      carData: e.currentTarget.dataset['food']
    })
    wx.showToast({
      title: '成功加入购物车',
      icon: 'succes',
      duration: 1000,
      mask: true,
      success:function(){
        // 遍历列表 与 购物车列表  
        for (var i in that.data.carData) {
          // 列表中某一项item的id == 点击事件传递过来的id。则是被点击的项  
          if (that.data.carData[i].foodid == e.currentTarget.dataset['food'][foodindex].foodid) {
            // 给carData数组的当前项添加count元素，值为1，用于记录添加到购物车的数量
            that.data.carData[i].count = 1;
            // 获取购物车的缓存数组（没有数据，则赋予一个空数组）  
            var arr = wx.getStorageSync('cart') || [];
            // 如果购物车有数据  
            if (arr.length > 0) {
              // 遍历购物车数组  
              for (var j in arr) {
                // 判断购物车内的item的id，和事件传递过来的id，是否相等  
                if (arr[j].foodid == e.currentTarget.dataset['food'][foodindex].foodid) {
                  // 相等的话，给count+1（即再次添加入购物车，数量+1）  
                  arr[j].count = arr[j].count + 1;
                  // 最后，把购物车数据，存放入缓存（此处不用再给购物车数组push元素进去，因为这个是购物车有的，直接更新当前数组即可）  
                  try {
                    wx.setStorageSync('cart', arr)
                  } catch (e) {
                    console.log(e)
                  }
                  // 返回（在if内使用return，跳出循环节约运算，节约性能）  
                  return;
                }
              }
              // 遍历完购物车后，没有对应的item项，把carData的当前项放入购物车数组
              that.data.carData[i].checked = true;//默认设置选择
              arr.push(that.data.carData[i]);
            }
            // 购物车没有数据，把item项push放入当前数据（第一次存放时）  
            else {
              that.data.carData[i].checked=true;//默认设置选择
              arr.push(that.data.carData[i]);
            }
            // 最后，把购物车数据，存放入缓存  
            try {
              wx.setStorageSync('cart', arr)
              // 返回（在if内使用return，跳出循环节约运算，节约性能）  
              return;
            } catch (e) {
              console.log(e)
            }
          }
        } 
      },
      fail:function(){

      }
    })
  }
})

