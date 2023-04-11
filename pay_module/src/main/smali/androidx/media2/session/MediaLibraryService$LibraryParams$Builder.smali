.class public final Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
.super Ljava/lang/Object;
.source "MediaLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService$LibraryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mOffline:Z

.field private mRecent:Z

.field private mSuggested:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 631
    new-instance v0, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    iget-object v1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mBundle:Landroid/os/Bundle;

    iget-boolean v2, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mRecent:Z

    iget-boolean v3, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mOffline:Z

    iget-boolean v4, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mSuggested:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;ZZZ)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 621
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mBundle:Landroid/os/Bundle;

    .line 622
    return-object p0
.end method

.method public setOffline(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "offline"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 594
    iput-boolean p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mOffline:Z

    .line 595
    return-object p0
.end method

.method public setRecent(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "recent"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 579
    iput-boolean p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mRecent:Z

    .line 580
    return-object p0
.end method

.method public setSuggested(Z)Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
    .locals 0
    .param p1, "suggested"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 610
    iput-boolean p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;->mSuggested:Z

    .line 611
    return-object p0
.end method
