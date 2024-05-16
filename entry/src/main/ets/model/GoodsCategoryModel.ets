import GoodsCategory from '../viewmodel/GoodsCategory'

/**
 * 商品类型枚举
 */
enum GoodsCategoryEnum{
  /**
   * 果蔬鲜花
   */
  FRUITVEG,
  /**
   * 肉禽蛋品
   */
  MEATEGG,
  /**
   * 海鲜水产
   */
  SEAFOOD,
  /**
   * 乳品烘焙
   */
  MILKBAKE,
  /**
   * 快手菜面点
   */
  FASTFOOD,
  /**
   * 餐饮熟食
   */
  COOKEDFOOD,
  /**
   * 酒水饮料
   */
  DRINKS,
  /**
   * 零食冰淇淋
   */
  SNAKE,
  /**
   * 油粮调味
   */
  OIL,
  /**
   * 美护百货
   */
  MAKEUP,
}

let GoodsCategories = [
  new GoodsCategory(0, $r('app.string.fruitveg'), $r('app.media.strawberry')),
  new GoodsCategory(1, $r('app.string.meategg'),$r('app.media.chicken_breast')),
  new GoodsCategory(2, $r('app.string.seafood'),$r('app.media.fish')),
  new GoodsCategory(3, $r('app.string.milkbake'),$r('app.media.milk')),
  new GoodsCategory(4, $r('app.string.fastfood'),$r('app.media.ic_breakfast')),
  new GoodsCategory(5, $r('app.string.cookedfood'),$r('app.media.ic_breakfast')),
  new GoodsCategory(6, $r('app.string.drinks'),$r('app.media.ic_breakfast')),
  new GoodsCategory(7, $r('app.string.snack'),$r('app.media.ic_breakfast')),
  new GoodsCategory(8, $r('app.string.oil'),$r('app.media.ic_breakfast')),
  new GoodsCategory(9, $r('app.string.makeup'),$r('app.media.ic_breakfast'))
]

export {GoodsCategories,GoodsCategoryEnum}
