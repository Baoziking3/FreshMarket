
import router from '@ohos.router'
import BackHeader from '../view/Detail/BackHeader'
import GoodsDetail from '../view/Detail/GoodsDetail'

@Entry
@Component
struct GoodsIndex {
  @State goodsId: number =0

  onPageShow(){
    // 1.获取跳转时的参数
    let params: any = router.getParams()
    // 2.获取点击的饮食记录类型
    this.goodsId = params.id

  }

  build() {
    Column(){
      //1. 头部导航
      BackHeader()
      //2. 商品详情
      GoodsDetail({goodsId: this.goodsId})
        .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }
}