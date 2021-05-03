package test

import (
	"path/filepath"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

var terraExamples, _ = filepath.Abs("../examples/")

func TestInitAndApplyAndIdempotent(t *testing.T) {

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{

		TerraformDir: terraExamples,
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApplyAndIdempotentE(t, terraformOptions)

}
