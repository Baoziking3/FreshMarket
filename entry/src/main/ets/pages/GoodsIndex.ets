
import router from '@ohos.router'
import GoodsList from '../view/goodsindex/GoodsList'
import SearchBackHeader from '../view/goodsindex/SearchBackHeader'
@Entry
@Component
struct GoodsIndex {

  build() {
    Column(){
      //1. 头部导航
      SearchBackHeader()
      //2. 列表
      GoodsList()
        .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }
}