class Answer < ActiveRecord::Base
  enum ans_type: [ :string, :int, :bool ]
  belongs_to :release
  belongs_to :question
end
