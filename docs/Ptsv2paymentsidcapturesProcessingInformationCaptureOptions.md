# CyberSource::Ptsv2paymentsidcapturesProcessingInformationCaptureOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**capture_sequence_number** | **Float** | Capture number when requesting multiple partial captures for one payment. Used along with _totalCaptureCount_ to track which capture is being processed.  For example, the second of five captures would be passed to CyberSource as:   - _captureSequenceNumber_ &#x3D; 2, and   - _totalCaptureCount_ &#x3D; 5  | [optional] 
**total_capture_count** | **Float** | Total number of captures when requesting multiple partial captures for one payment. Used along with _captureSequenceNumber_ which capture is being processed.  For example, the second of five captures would be passed to CyberSource as:   - _captureSequenceNumber_ &#x3D; 2, and   - _totalCaptureCount_ &#x3D; 5  | [optional] 


