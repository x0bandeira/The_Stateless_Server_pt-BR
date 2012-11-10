class Scheduler
{
  private readonly DateTime _date;
  private readonly Pipeline _pipeline;

  public Scheduler(Pipeline pipeline, DateTime date)
  {
    _date = date;
    _pipeline = pipeline;
  }

  public CapacityModel AnalyseCapacity(IEnumerable<Nomination> nominations)
  {
    return new CapacityModel 
    {
      ScheduledGas = nominations
        .Select(n => new ScheduledGas(n, Capacity))
    };
  }

  public long Capacity
  {
    get
    {
      return _pipeline.Capacity * (long)Math.Round(_date.GetHours() / 24);
    }
  }
}

var nominations = _nominationsRepo.GetAll(pipeline, date);
var scheduler = new Scheduler(pipeline, date);

var capacityModel = scheduler.AnalyseCapacity(nominations);



