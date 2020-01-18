module ProductsHelper
  def product_status_zh(status)
    %w(進貨中 上架 下架)[Product.statuses[status]]
  rescue
    nil
  end
end
