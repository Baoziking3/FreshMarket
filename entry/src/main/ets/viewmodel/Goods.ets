export default class Goods{
  /**
   * 商品id
   */
  id: number
  /**
   * 商品名称
   */
  name: ResourceStr
  /**
   * 商品图片
   */
  image: ResourceStr
  /**
   * 商品价格
   */
  price: number
  /**
   * 商品分类id
   */
  categoryID: number
  /**
   * 商品介绍
   */
  intro: ResourceStr

  constructor(id: number, name: ResourceStr, image: ResourceStr, categoryID: number, price: number, intro: ResourceStr) {
    this.id = id
    this.name = name
    this.image = image
    this.categoryID =categoryID
    this.price = price
    this.intro = intro
  }
}
