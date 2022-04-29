class ContactLogs
    include Mongoid::Document

    field :id,      type: Integer
    field :nome,    type: String
    field :email,   type: String
    field :sysdate, type: Time
end