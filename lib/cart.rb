# Создаем класс для того, чтобы складывать выбранные продукты в корзину.
# 
class Cart
  def initialize(products = [])
    @products = products
  end

# Переопределяем метод <<, чтобы красиво его переиспользовать в главной программе.
# То есть, когда мы вызовем его в основном коде, по сути экземпляр, соответствующий 
# выбранному пользователем номеру добавляется в массив cart.
# 
  def <<(product)
    @products << product
  end

# Подсчитываем сумму купленных товаров в блоке
# 
  def total
    @products.sum(&:price)
  end

# Готовим массив для вывода.
# tally преобразует массив продуктов, в хеш,
# где каждый продукт - ключ, а его количество - значение.
# 
  def to_s
    @products
      .tally
      .map
      .with_index(1) { |(product, amount), index| "#{index}. #{product} X #{amount} шт." }
      .join("\n")
  end
end
