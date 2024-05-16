
import CategoryGrid from './CategoryGrid'
import HomeGoodsList from './HomeGoodsList'
import SearchHeader from './SearchHeader'
@Component
export default struct HomeIndex {
  build(){
    Column(){
      // 1. 头部搜索栏
      SearchHeader()
      // 2. 网格分类
      CategoryGrid()
      // 3. 商品卡片
      HomeGoodsList()
        .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.home_page_background'))

  }
}
