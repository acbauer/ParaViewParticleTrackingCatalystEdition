vtk_module(vtkFiltersParallelFlowPaths
  IMPLEMENTS
    vtkFiltersFlowPaths
  TEST_DEPENDS
    vtkTestingRendering
    vtkRenderingParallel
    vtkIOParallel
  KIT
    vtkParallel
  DEPENDS
    vtkCommonCore
    vtkFiltersFlowPaths
  PRIVATE_DEPENDS
    vtkCommonDataModel
    vtkCommonExecutionModel
    vtkCommonMath
    vtkCommonSystem
    vtkFiltersAMR
    vtkFiltersCore
    vtkFiltersGeneral
    vtkIOCore
    vtkParallelCore
    vtkParallelMPI
  )
