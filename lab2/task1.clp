(deftemplate parent-child
   (slot parent-type (allowed-values father mother parents))
   (multislot parent-name)
   (slot child-name)
)

(deftemplate person-role
   (slot person-name)
   (slot role (allowed-values father mother son daughter))
)

(deftemplate person-gender
   (slot person-name)
   (slot gender (allowed-values male female))
)

(deffacts family-data
   (parent-child (parent-type father) (parent-name Tom) (child-name John))
   (parent-child (parent-type mother) (parent-name Susan) (child-name John))
   (parent-child (parent-type parents) (parent-name Tom Susan) (child-name John))
   (person-role (person-name Tom) (role father))
   (person-role (person-name Susan) (role mother))
   (person-role (person-name John) (role son))
   (person-gender (person-name Tom) (gender male))
   (person-gender (person-name Susan) (gender female))
   (person-gender (person-name John) (gender male))
)