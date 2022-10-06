require "test_helper"

class CheckupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkup = checkups(:one)
  end

  test "should get index" do
    get checkups_url, as: :json
    assert_response :success
  end

  test "should create checkup" do
    assert_difference("Checkup.count") do
      post checkups_url, params: { checkup: { advice: @checkup.advice, checkup_date: @checkup.checkup_date, comment: @checkup.comment, diagnosis: @checkup.diagnosis, doctor_id: @checkup.doctor_id, hpi: @checkup.hpi, next_visit: @checkup.next_visit, patient_id: @checkup.patient_id, symptoms: @checkup.symptoms, visit_id: @checkup.visit_id } }, as: :json
    end

    assert_response :created
  end

  test "should show checkup" do
    get checkup_url(@checkup), as: :json
    assert_response :success
  end

  test "should update checkup" do
    patch checkup_url(@checkup), params: { checkup: { advice: @checkup.advice, checkup_date: @checkup.checkup_date, comment: @checkup.comment, diagnosis: @checkup.diagnosis, doctor_id: @checkup.doctor_id, hpi: @checkup.hpi, next_visit: @checkup.next_visit, patient_id: @checkup.patient_id, symptoms: @checkup.symptoms, visit_id: @checkup.visit_id } }, as: :json
    assert_response :success
  end

  test "should destroy checkup" do
    assert_difference("Checkup.count", -1) do
      delete checkup_url(@checkup), as: :json
    end

    assert_response :no_content
  end
end
