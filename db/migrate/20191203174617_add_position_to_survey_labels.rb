class AddPositionToSurveyLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :survey_labels, :label_position, :integer, index: true
    add_column :survey_labels, :program_position, :integer, index: true
  end
end
