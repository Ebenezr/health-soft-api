require "test_helper"

class PatientVitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_vital = patient_vitals(:one)
  end

  test "should get index" do
    get patient_vitals_url, as: :json
    assert_response :success
  end

  test "should create patient_vital" do
    assert_difference("PatientVital.count") do
      post patient_vitals_url, params: { patient_vital: { bp_diastolic: @patient_vital.bp_diastolic, bp_systolic: @patient_vital.bp_systolic, notes: @patient_vital.notes, patient_id: @patient_vital.patient_id, temperature: @patient_vital.temperature } }, as: :json
    end

    assert_response :created
  end

  test "should show patient_vital" do
    get patient_vital_url(@patient_vital), as: :json
    assert_response :success
  end

  test "should update patient_vital" do
    patch patient_vital_url(@patient_vital), params: { patient_vital: { bp_diastolic: @patient_vital.bp_diastolic, bp_systolic: @patient_vital.bp_systolic, notes: @patient_vital.notes, patient_id: @patient_vital.patient_id, temperature: @patient_vital.temperature } }, as: :json
    assert_response :success
  end

  test "should destroy patient_vital" do
    assert_difference("PatientVital.count", -1) do
      delete patient_vital_url(@patient_vital), as: :json
    end

    assert_response :no_content
  end
end
