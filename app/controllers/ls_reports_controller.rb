class LsReportsController < ApplicationController
  layout 'full_width_margins'
  respond_to :json, :html

  ##
  # show all roles
  def index
    authorize! :list, LimeSurvey
    @survey_label_ordered = SurveyLabel.all.order(:label).group_by(&:program)
  end
end
