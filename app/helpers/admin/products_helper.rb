module Admin::ProductsHelper
 def count_for_admin(products, message = 'Count')
 content_tag :h2, "#{message} #{products.count}"
 end
end