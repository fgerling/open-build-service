# This component renders the request description based on the type of the actions

class BsRequestSummaryDescriptionComponent < ApplicationComponent
  attr_reader :bs_request, :types

  delegate :project_or_package_link, to: :helpers
  delegate :user_with_realname_and_icon, to: :helpers
  delegate :requester_str, to: :helpers
  delegate :creator_intentions, to: :helpers

  def initialize(bs_request:)
    super()
    @bs_request = bs_request
    @types = bs_request.bs_request_actions.group_by(&:type)
  end

  private
end
