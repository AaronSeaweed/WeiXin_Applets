Page({

  /**
   * 页面的初始数据
   */
  data: {
    addressList:[],
    positioncity:""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (option) {
    this.setData({
      positioncity:option.city
    });
  },
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    wx.getLocation({//获取当前坐标的经纬度
      success: function (res){
       // console.log(res.latitude, res.longitude)
      }
    })
  },
  /**
   * 根据用户输入的关键字显示对应的地址
   * positioncity：当前选择的城市
   * keyword：用户输入的关键字
   * key:地图密钥(需个人申请)
   */
  searchaddress: function (e){
    let keyword = e.detail.value;
    if (keyword){
      let positioncity = this.data.positioncity;
      let that = this;
      wx.request({
        url: 'https://apis.map.qq.com/ws/place/v1/suggestion/?region=' + positioncity + '&keyword=' + keyword + '&key=DDNBZ-NOVHR-UY7WA-WN62D-BGLV2-MDFRP',
        method: 'GET',
        data: {},
        success: function (res) {
          if (res.statusCode == 200 && res.errMsg == "request:ok") {
            that.setData({
              addressList: res.data.data
            });
          }
          else if (res.statusCode == 500) {
            that.setData({
              addressList: []
            });
          }
          else {
            //出错
          }
        }
      })
    }else{
      this.setData({
        addressList: []
      });
    }
  },
  selectaddress:function(e){
    let pages = getCurrentPages();//获取页面级对象
    var prevPage = pages[pages.length - 2];//获取上一页面对象
    prevPage.setData({//设置上一个页面的数据
      dateiladdress: e.currentTarget.dataset.address,
      area: e.currentTarget.dataset.area
    });
    wx.navigateBack({
      delta: 1
    })
    
  }
})