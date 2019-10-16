class SurveyLabel < ActiveRecord::Base
  belongs_to :lime_survey, foreign_key: :lime_survey_sid, primary_key: :sid

  def self.health_seminar_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.where(program: 'Native Health Seminar Series').pluck(:lime_survey_sid))
  end

  def self.wyeast_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.where(program: 'Wy’EastPost Baccalaureate Program').pluck(:lime_survey_sid))
  end

  def self.indigenous_faculty_role_aggregates
    RoleAggregate.where(lime_survey_sid: SurveyLabel.where(program: 'Indigenous Faculty Forum').pluck(:lime_survey_sid))
  end
end
