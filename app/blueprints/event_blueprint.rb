# frozen_string_literal: true

class EventBlueprint < Blueprinter::Base
    identifier :id

    view :profile do
        fields :content, :start_date_time, :end_date_time, :guests, :title
    end

    view :short do
        fields :title, :start_date_time, :end_date_time, :guests, :sport 
        association :user, blueprint: UserBlueprint, view: :short
    end
    view :long do
        fields :title, :start_date_time, :end_date_time, :guests, :sport 
        association :user, blueprint: UserBlueprint, view: :short
    end
end
