export default class GoodsCategory{
  /**
   * 类型id
   */
  id: number
  /**
   * 类型名称
   */
  name: ResourceStr
  /**
   * 类型图片
   */
  image: ResourceStr

  constructor(id: number, name: ResourceStr, image: ResourceStr) {
    this.id = id
    this.name = name
    this.image = image
  }
}
