import router from '@ohos.router'
import { CommonConstants } from '../../common/constants/CommonConstants'

@Component
export default struct SearchBackHeader {
  @State changeValue: string = ''
  @State submitValue: string = ''
  private valueInt: number = 100
  controller: SearchController = new SearchController()
  build() {
    Row({space: CommonConstants.SPACE_6}){
      Image($r('app.media.ic_public_back'))
        .width(30)
        .onClick(() => router.back())
      Search({value: this.changeValue, placeholder: '搜索商品信息', controller: this.controller})
        .searchButton('搜索')
        .textFont({size: 18})
        .layoutWeight(1)
        .onSubmit((value: string) => {
          this.submitValue = value
          this.valueInt = parseInt(value)
          router.pushUrl({
            url: 'pages/DetailPage',
            params: {id: this.valueInt}
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
        .onChange((value: string) => {
          this.changeValue = value
        })
      Badge({count: 1, position: BadgePosition.RightTop, style: {fontSize: 12}}){
        Image($r('app.media.ic_public_email'))
          .width(24)
      }
    }
    .width(CommonConstants.THOUSANDTH_940)
  }
}