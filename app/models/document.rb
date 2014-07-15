# == Schema Information
#
# Table name: documents
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  attachable_id     :integer
#  attachable_type   :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  file_file_name    :string(255)
#  file_content_type :string(255)
#  file_file_size    :integer
#  file_updated_at   :datetime
#

class Document < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  has_attached_file :file
  do_not_validate_attachment_file_type :file
  
end
