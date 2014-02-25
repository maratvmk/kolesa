class Brand < ActiveRecord::Base
	mount_uploader :symbol, SymbolUploader
end
