require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get candidates_url
    assert_response :success
  end

  test "should get new" do
    get new_candidate_url
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post candidates_url, params: { candidate: { age: @candidate.age, area: @candidate.area, edited_by: @candidate.edited_by, education: @candidate.education, fullname: @candidate.fullname, introduction: @candidate.introduction, note: @candidate.note, picture: @candidate.picture, political: @candidate.political, profession: @candidate.profession, sex: @candidate.sex, speech: @candidate.speech, unit_number: @candidate.unit_number, user_id: @candidate.user_id } }
    end

    assert_redirected_to candidate_url(Candidate.last)
  end

  test "should show candidate" do
    get candidate_url(@candidate)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidate_url(@candidate)
    assert_response :success
  end

  test "should update candidate" do
    patch candidate_url(@candidate), params: { candidate: { age: @candidate.age, area: @candidate.area, edited_by: @candidate.edited_by, education: @candidate.education, fullname: @candidate.fullname, introduction: @candidate.introduction, note: @candidate.note, picture: @candidate.picture, political: @candidate.political, profession: @candidate.profession, sex: @candidate.sex, speech: @candidate.speech, unit_number: @candidate.unit_number, user_id: @candidate.user_id } }
    assert_redirected_to candidate_url(@candidate)
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete candidate_url(@candidate)
    end

    assert_redirected_to candidates_url
  end
end
