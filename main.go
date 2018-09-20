package cisample

import "fmt"

// Connpass is ...
type Connpass struct {
  ResultsReturned  int `json:results_returned`
  ResultsAvailable int `json:results_available`
  ResultsStart     int `json:results_start`
  //ResultsReturned  int `json:"results_returned"`
  //ResultsAvailable int `json:"results_available"`
  //ResultsStart     int `json:"results_start"`
}

func main() {
  fmt.Printf("Hello [7]")
}
