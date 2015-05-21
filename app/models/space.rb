require 'elasticsearch/model'

class Space < ActiveRecord::Base
	include Elasticsearch::Model
	include Elasticsearch::Model::Callbacks
end
Space.import
