(deftemplate AKO
   (slot child-class)
   (slot parent-class)
)

(deftemplate IS-A
   (slot instance)
   (slot class)
)

(deffacts computer-classification-network
   (AKO (child-class "Dedicated Computers") (parent-class "Computing Systems"))
   (AKO (child-class "General Purpose Computers") (parent-class "Computing Systems"))
   (AKO (child-class "Supercomputers") (parent-class "General Purpose Computers"))
   (AKO (child-class "Mainframes") (parent-class "General Purpose Computers"))
   (AKO (child-class "Microcomputers") (parent-class "General Purpose Computers"))
   (AKO (child-class "Single-Processor Computers") (parent-class "Microcomputers"))
   (AKO (child-class "Multi-Processor Computers") (parent-class "Microcomputers"))
   (AKO (child-class "Single-Board Computers") (parent-class "Microcomputers"))
   (AKO (child-class "Single-Chip Computers") (parent-class "Microcomputers"))
   (IS-A (instance "Cray A90") (class "Supercomputers"))
   (IS-A (instance "IBM z16") (class "Mainframes"))
   (IS-A (instance "Raspberry Pi 4") (class "Single-Board Computers"))
   (IS-A (instance "ESP32 Expressif") (class "Single-Chip Computers"))
   (IS-A (instance "Intel NUC 11") (class "Single-Processor Computers"))
   (IS-A (instance "Workstation Dual-AMD") (class "Multi-Processor Computers"))
)