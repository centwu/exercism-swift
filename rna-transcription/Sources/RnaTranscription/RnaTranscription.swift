// Define the 'Nucleotide' enum, its `init`, and its `complementOfDNA` method
enum TranscriptionError : Error {
  case invalidNucleotide(message: String)
}

struct Nucleotide {
  let dna: String
  
  let dnaRnaPairs: [Character: String] = [
    "G" : "C",
    "C" : "G",
    "T" : "A",
    "A" : "U"
  ]
  
  init(_ dnaStrand: String) {
    self.dna = dnaStrand
  }
  
  func complementOfDNA() throws -> String {
    try dna.map {
      guard let rna = dnaRnaPairs[$0] else {
        throw TranscriptionError.invalidNucleotide(message: "\($0) is not a valid Nucleotide")
      }
      return rna
    }
    .reduce("", +)
  }
}
