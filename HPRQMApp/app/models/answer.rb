class Answer < ActiveRecord::Base
  enum type: [ :string, :int, :bool ]
  belongs_to :project
  belongs_to :question
end
