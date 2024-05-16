import router from '@ohos.router'
import { CommonConstants } from '../../common/constants/CommonConstants'
import { GoodsCategories } from '../../model/GoodsCategoryModel'
import GoodsModel from '../../model/GoodsModel'
import Goods from '../../viewmodel/Goods'
import GoodsCategory from '../../viewmodel/GoodsCategory'
import GroupInfo from '../../viewmodel/GroupInfo'
@Component
export default struct  CategoryGrid {


  build() {
    Grid(){
      ForEach(GoodsCategories, (item: GoodsCategory) => {
        GridItem(){
          Column({ space: CommonConstants.SPACE_4 }){
            Image(item.image)
              .width(34)
              .height(34)
            Text(item.name).fontSize(12).fontWeight(CommonConstants.FONT_WEIGHT_600)
          }
          .width('100%')
        }
        .height(68)
        .onClick(() =>{
          router.pushUrl({
            url: 'pages/GoodsIndex',
          },
            router.RouterMode.Single,
            (err) => {
            if (err) {
              console.error(`pushUrl failed, code is ${err.code}, message is ${err.message}`);
              return;
            }
            console.info('pushUrl success');
          });
        })
      })
    }
    .width(CommonConstants.THOUSANDTH_940)
    .height(160)
    .backgroundColor(Color.White)
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .columnsGap(4)
    .rowsGap(4)
    .padding(9)
    .borderRadius(CommonConstants.DEFAULT_18)
  }
}