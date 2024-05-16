
import router from '@ohos.router'
import { CommonConstants } from '../../common/constants/CommonConstants'
import GoodsModel from '../../model/GoodsModel'
import Goods from '../../viewmodel/Goods'
import GoodsCategory from '../../viewmodel/GoodsCategory'
import GroupInfo from '../../viewmodel/GroupInfo'
@Component
export default struct  GoodsDetail {
  private allGoods: Goods[] = GoodsModel.list()
  @Prop goodsId: number

  build() {
    Column({space: CommonConstants.SPACE_6}) {
      if (this.goodsId >= 0 && this.goodsId <= this.allGoods.length -1){
        //1. 图片信息
        Image(this.allGoods[this.goodsId].image).width(CommonConstants.THOUSANDTH_880).margin({top: 6})
        //2. 文本信息
        Column({space: CommonConstants.SPACE_6}){
          Text(`￥ ${this.allGoods[this.goodsId].price}`).fontSize(24).fontColor(Color.Red)
            .fontWeight(CommonConstants.FONT_WEIGHT_700).margin({top:12})
          Text(this.allGoods[this.goodsId].name).fontSize(24).fontColor(Color.Black)
            .fontWeight(CommonConstants.FONT_WEIGHT_700).margin({top:2})
          Text(this.allGoods[this.goodsId].intro).fontSize(18).fontColor(Color.Black)
            .fontWeight(CommonConstants.FONT_WEIGHT_400).margin({top:2})
        }.width(CommonConstants.THOUSANDTH_940).backgroundColor(Color.White).borderRadius(CommonConstants.DEFAULT_18)
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        .padding({left:30})
        .margin({bottom:10})
      }else {
        Text('该商品不存在!').fontSize(40).fontColor(Color.Black)
          .fontWeight(CommonConstants.FONT_WEIGHT_900).margin(300)
      }

    }.width('100%').height('100%').backgroundColor($r('app.color.home_page_background'))

  }
}