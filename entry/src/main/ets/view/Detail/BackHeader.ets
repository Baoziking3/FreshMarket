import router from '@ohos.router'
import { CommonConstants } from '../../common/constants/CommonConstants'

@Component
export default struct BackHeader {
  @State changeValue: string = ''
  @State submitValue: string = ''
  private valueInt: number = 100
  controller: SearchController = new SearchController()
  build() {
    Row({space: CommonConstants.SPACE_6}){
      Image($r('app.media.ic_public_back'))
        .width(30)
        .onClick(() => router.back())
      Blank()
      Badge({count: 1, position: BadgePosition.RightTop, style: {fontSize: 12}}){
        Image($r('app.media.ic_public_email'))
          .width(24)
      }
    }
    .width(CommonConstants.THOUSANDTH_940)
  }
}