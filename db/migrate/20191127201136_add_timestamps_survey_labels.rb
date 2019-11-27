class AddTimestampsSurveyLabels < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :survey_labels, default: DateTime.now
  end
end
