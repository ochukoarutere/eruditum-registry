;; Eruditum Chain Registry


;; =============================================
;; Storage Architecture
;; =============================================

;; Central knowledge profile repository
(define-map intellectual-portfolios
  { participant-uid: uint }
  {
    public-identifier: (string-ascii 50),
    ledger-identity: principal,
    onboarding-timestamp: uint,
    knowledge-abstract: (string-ascii 160),
    focus-domains: (list 5 (string-ascii 30))
  }
)

;; Granular data access management
(define-map information-visibility-controls
  { participant-uid: uint, observer-identity: principal }
  { visibility-granted: bool }
)

;; Tracking participant interaction metrics
(define-map participant-activity-metrics
  { participant-uid: uint }
  {
    recent-interaction: uint,
    interaction-frequency: uint,
    latest-operation: (string-ascii 50)
  }
)

;; Registry size monitoring
(define-data-var active-participants-tally uint u0)

;; =============================================
;; Configuration & Constants 
;; =============================================

(define-constant ECOSYSTEM-GUARDIAN tx-sender)
(define-constant ERROR-PERMISSION-REVOKED (err u700))
(define-constant ERROR-ENTITY-NOT-FOUND (err u701)) 
(define-constant ERROR-PARTICIPANT-PREEXISTING (err u702))
(define-constant ERROR-VERIFICATION-UNSUCCESSFUL (err u703))
(define-constant ERROR-ACTION-RESTRICTED (err u704))

