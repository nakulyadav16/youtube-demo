class Document < ApplicationRecord

  DOC_TYPES = ['Marksheet' , 'Photo Id' , 'Address Proof', 'others'].freeze

  belongs_to :employee

  has_one_attached :image

  validates :name , :doc_type , presence: true
end
