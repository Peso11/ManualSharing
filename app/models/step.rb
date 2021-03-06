class Step < ApplicationRecord
  resourcify
  belongs_to :manual
  has_many :blocks, dependent: :destroy
  validates :name, presence: true
  

  def ordered_blocks
    blocks.order('priority ASC')
  end

  def blocks_contents
    blocks.collect(&:content).join(' ')
  end
end
