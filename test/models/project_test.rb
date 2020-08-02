# == Schema Information
#
# Table name: projects
#
#  id                    :bigint           not null, primary key
#  approved              :boolean          default(FALSE), not null
#  description           :text             not null
#  github_data           :jsonb            not null
#  github_name           :text
#  github_sychronized_at :datetime
#  github_url            :text
#  name                  :text             not null
#  npm_data              :jsonb            not null
#  npm_name              :text
#  npm_sychronized_at    :datetime
#  npm_url               :text
#  tags                  :text             default([]), not null, is an Array
#  url                   :text             not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_projects_on_approved                 (approved)
#  index_projects_on_github_url               (github_url) UNIQUE WHERE (github_url <> NULL::text)
#  index_projects_on_lower_btrim_github_name  (lower(btrim(github_name))) UNIQUE WHERE (github_name <> NULL::text)
#  index_projects_on_lower_btrim_name         (lower(btrim(name))) UNIQUE
#  index_projects_on_lower_btrim_npm_name     (lower(btrim(npm_name))) UNIQUE WHERE (npm_name <> NULL::text)
#  index_projects_on_npm_url                  (npm_url) UNIQUE WHERE (npm_url <> NULL::text)
#  index_projects_on_tags                     (tags) USING gin
#  index_projects_on_url                      (url) UNIQUE
#
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
