if (PARAVIEW_USE_MPI)
  add_definitions("-DMPICH_IGNORE_CXX_SEEK")
endif()
vtk_module(vtkPVClientServerCoreDefault
  DEPENDS
    #vtkPVVTKExtensionsDefault
    vtkFiltersProgrammable
    vtkPVClientServerCoreCore
  PRIVATE_DEPENDS
    vtksys
  TEST_DEPENDS
    vtkTestingCore
  TEST_LABELS
    PARAVIEW
  KIT
    vtkPVClientServer
)
