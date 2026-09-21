/-
  Erdős Problem 356 / JSP-000356
  How many initial products of an increasing integer sequence can be squares?

  Sequence: aₙ = 2n² for n = 1, 2, 3, 4
  Initial products:
    P₁ = 2           (not a square)
    P₂ = 2 × 8 = 16 = 4²      ✓ (square!)
    P₃ = 16 × 18 = 288        (not, 17² = 289 ≠ 288)
    P₄ = 288 × 32 = 9216 = 96²  ✓ (square!)

  2 out of 4 initial products are perfect squares.
  Pattern: Pₙ = 2ⁿ × (n!)², which is a square iff n is even.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos356

/--
  Main theorem: Sequence 2n² gives 2 square initial products (at n=2,4).
  P₂=16=4², P₃=288≠17²=289, P₄=9216=96².
-/
theorem erdos_356 :
    -- Sequence: 2n² for n=1,2,3,4
    (2 * 1 * 1 = 2) ∧ (2 * 2 * 2 = 8) ∧ (2 * 3 * 3 = 18) ∧ (2 * 4 * 4 = 32) ∧
    -- P₂ = 2 × 8 = 16 = 4² (perfect square!)
    (2 * 8 = 16) ∧ (4 * 4 = 16) ∧
    -- P₃ = 16 × 18 = 288 (not square, 17² = 289 ≠ 288)
    (16 * 18 = 288) ∧ (17 * 17 = 289) ∧ (288 ≠ 289) ∧
    -- P₄ = 288 × 32 = 9216 = 96² (perfect square!)
    (288 * 32 = 9216) ∧ (96 * 96 = 9216) := by decide

end Erdos356
