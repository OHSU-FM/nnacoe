class SurveyLabel < ActiveRecord::Base
  belongs_to :lime_survey, foreign_key: :lime_survey_sid, primary_key: :sid
  has_one :role_aggregate,
    through: :lime_survey,
    foreign_key: :lime_survey_sid

  enum program: {
    health_seminar: 'health_seminar',
    wyeast: 'wyeast',
    indigenous_faculty: 'indigenous_faculty',
    applicant_workshop: 'applicant_workshop'
  }

  def self.health_seminar_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.health_seminar.pluck(:lime_survey_sid))
  end

  def self.wyeast_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.wyeast.pluck(:lime_survey_sid))
  end

  def self.indigenous_faculty_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.where(program: 'Indigenous Faculty Forum').pluck(:lime_survey_sid))
  end

  def self.indigenous_faculty_labels
    SurveyLabel.indigenous_faculty.pluck(:label)
  end

  def title
    lime_survey&.title
  end

  rails_admin do
    navigation_label 'Lime Survey'
    list do
      field :lime_survey do
        column_width 500
      end
      field :program
      field :year
      field :label
      field :program_position
      field :label_position
    end
  end
end
