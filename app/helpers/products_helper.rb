module ProductsHelper
 def count_for(products, message = 'Count')
 content_tag :h2, "#{message} #{@products.count}"
 end
end