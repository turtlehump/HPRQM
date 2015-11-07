class Answer < ActiveRecord::Base
  enum ans_type: [ :string, :int, :bool ]
  belongs_to :project
  belongs_to :question
end
