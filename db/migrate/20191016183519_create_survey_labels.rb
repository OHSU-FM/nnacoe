class CreateSurveyLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_labels do |t|
      t.integer :lime_survey_sid, index: true
      t.string :year
      t.string :program
      t.string :label
    end
  end
end
