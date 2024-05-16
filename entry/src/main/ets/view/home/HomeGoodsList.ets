import router from '@ohos.router'
import { CommonConstants } from '../../common/constants/CommonConstants'
import GoodsModel from '../../model/GoodsModel'
import Goods from '../../viewmodel/Goods'
@Component
export default struct HomeGoodsList {
  build(){
    List({space: CommonConstants.SPACE_4}){
      this.ListBuilder(GoodsModel.list())
    }
    .width(CommonConstants.THOUSANDTH_940)
    .margin({top: 10})
    .height('100%')
  }
  @Builder ListBuilder(items: Goods[]) {
    List({ space: CommonConstants.SPACE_10 }) {
      ForEach(items, (item: Goods) => {
        ListItem() {
          Row({ space: CommonConstants.SPACE_12 }) {
            Image(item.image).width('30%')
            Column({ space: CommonConstants.SPACE_6 }) {
              Text(item.name).fontWeight(CommonConstants.FONT_WEIGHT_900).fontSize(22)
              Row(){
                Text('￥').fontSize(18).fontColor(Color.Red)
                Text(item.price.toString()).fontSize(18).fontColor(Color.Red)
                Blank()
                Image($r('app.media.ic_public_add_norm_filled'))
                  .width(20)
                  .fillColor($r('app.color.primary_color'))
              }
              .width('100%')
              .padding({right: 4})
            }
            .alignItems(HorizontalAlign.Start)
            .padding({left:16})
            .justifyContent(FlexAlign.Start)
            .width('60%')

          }
          .width('100%')
          .height(130)
          .padding(CommonConstants.SPACE_4)
          .alignItems(VerticalAlign.Center)
        }
        .backgroundColor(Color.White)
        .borderRadius(CommonConstants.DEFAULT_18)
        .onClick(() =>{
          router.pushUrl({
            url: 'pages/DetailPage',
            params: {id: item.id}
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
    .width('100%')
    .height('100%')
  }
}