Component({
  /**
   * 组件的属性列表
   */
  properties: {
    propA: {
      type: String
    },
    propB: {
      type: Array
    },
    propC: {
      type: String
    }
  },

  /**
   * 组件的初始数据
   */
  data: {
    
  },

  /**
   * 组件的方法列表
   */
  methods: {
    showgoodslist:function(e){
      let op = e.currentTarget.dataset.op
      wx.navigateTo({
        url: '../checkOrder/goodslist?op=' + op
      })
    }
  },ready:function(){
    //console.log(this.properties.propB)
  }
})
