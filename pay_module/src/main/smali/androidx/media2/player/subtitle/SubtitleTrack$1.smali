.class Landroidx/media2/player/subtitle/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/subtitle/SubtitleTrack;->addCue(Landroidx/media2/player/subtitle/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

.field final synthetic val$thenMs:J

.field final synthetic val$track:Landroidx/media2/player/subtitle/SubtitleTrack;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/SubtitleTrack;Landroidx/media2/player/subtitle/SubtitleTrack;J)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 337
    iput-object p1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

    iput-object p2, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->val$track:Landroidx/media2/player/subtitle/SubtitleTrack;

    iput-wide p3, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 343
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->val$track:Landroidx/media2/player/subtitle/SubtitleTrack;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media2/player/subtitle/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 345
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

    const/4 v2, 0x1

    iget-wide v3, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->val$thenMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/player/subtitle/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 346
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

    iget-object v2, p0, Landroidx/media2/player/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/player/subtitle/SubtitleTrack;

    iget-object v2, v2, Landroidx/media2/player/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/media2/player/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
